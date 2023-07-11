package vmware.services.gateway.service

import org.springframework.security.core.userdetails.User
import org.springframework.security.core.userdetails.UserDetails
import org.springframework.security.core.userdetails.UserDetailsService
import org.springframework.security.core.userdetails.UsernameNotFoundException
import org.springframework.stereotype.Service
import vmware.services.gateway.repository.UserRepository

@Service("userDetailsService")
class UserDetailServiceImpl(val appUserRepository: UserRepository) : UserDetailsService {

    override fun loadUserByUsername(username: String): UserDetails {
        appUserRepository.findByUsername(username)?.let {
            return User(it.username, it.password, listOf())
        } ?: throw UsernameNotFoundException(String.format("No User found with username: $username"))
    }

}

